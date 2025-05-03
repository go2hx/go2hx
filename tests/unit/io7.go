package main

import (
	"fmt"
	"io"
	"os"
	"sync"
	"sync/atomic"
)

func main() {
	for i := 0; i < 100; i++ {
		run()
	}
}

func run() {
	const content = "0123456789ABCDEF"
	contentSize := int64(len(content))
	tmpdir, err := os.MkdirTemp("", "TestOffsetWriter_WriteAt")
	if err != nil {
		panic(err)
	}

	work := func(off, at int64) {
		position := fmt.Sprintf("off_%d_at_%d", off, at)
		tmpfile, err := os.CreateTemp(tmpdir, position)
		if err != nil || tmpfile == nil {
			fmt.Printf("CreateTemp(%s) failed: %v", position, err)
		}

		var writeN int64
		var wg sync.WaitGroup
		// Concurrent writes, one byte at a time
		for step, value := range []byte(content) {
			wg.Add(1)
			go func(wg *sync.WaitGroup, tmpfile *os.File, value byte, off, at int64, step int) {
				w := io.NewOffsetWriter(tmpfile, off)
				n, e := w.WriteAt([]byte{value}, at+int64(step))
				if e != nil {
					fmt.Printf("WriteAt failed. off: %d, at: %d, step: %d\n error: %v", off, at, step, e)
					wg.Done()
					tmpfile.Close()
					panic("issue")
				}
				atomic.AddInt64(&writeN, int64(n))
				wg.Done()
			}(&wg, tmpfile, value, off, at, step)
		}
		wg.Wait()

		// Read one more byte to reach EOF
		buf := make([]byte, contentSize+1)
		readN, err := tmpfile.ReadAt(buf, off+at)
		if err != io.EOF {
			fmt.Printf("ReadAt failed: %v", err)
			tmpfile.Close()
			panic("issue readAt")
		}
		readContent := string(buf[:contentSize])
		if writeN != int64(readN) || writeN != contentSize || readContent != content {
			fmt.Printf("%s:: WriteAt(%s, %d) error. \ngot n: %v, content: %s \nexpected n: %v, content: %v",
				position, content, at, readN, readContent, contentSize, content)
			tmpfile.Close()
			panic("issue writeAt")
		}
		tmpfile.Close()
	}
	for off := int64(0); off < 2; off++ {
		for at := int64(0); at < 2; at++ {
			work(off, at)
		}
	}
}
