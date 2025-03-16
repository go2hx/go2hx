package main

import (
	"fmt"
	"io"
	"os"
	"strings"
)

func main() {
	const content = "0123456789ABCDEF"
	contentSize := len(content)

	makeOffsetWriter := func(name string) (*io.OffsetWriter, *os.File) {
		tmpfilename := "TestOffsetWriter_Write_" + name
		tmpfile, err := os.CreateTemp("", tmpfilename)
		if err != nil || tmpfile == nil {
			fmt.Printf("CreateTemp(%s) failed: %v", tmpfilename, err)
		}
		return io.NewOffsetWriter(tmpfile, 0), tmpfile
	}
	checkContent := func(name string, f *os.File) {
		// Read one more byte to reach EOF
		buf := make([]byte, contentSize+1)
		readN, err := f.ReadAt(buf, 0)
		if err != io.EOF {
			fmt.Printf("ReadAt failed, err: %v", err)
			panic("issue")
		}
		readContent := string(buf[:contentSize])
		if readN != contentSize || readContent != content {
			fmt.Printf("%s error. \ngot n: %v, content: %s \nexpected n: %v, content: %v",
				name, readN, readContent, contentSize, content)
			panic("issue)")
		}
	}

	var name string
	name = "Write"
	//var wg sync.WaitGroup
	//wg.Add(1)
	func() {
		//defer wg.Done()
		// Write directly (off: 0, at: 0)
		// Write content to file
		w, f := makeOffsetWriter(name)
		for _, value := range []byte(content) {
			n, err := w.Write([]byte{value})
			if err != nil {
				fmt.Printf("Write failed, n: %d, err: %v", n, err)
			}
		}
		checkContent(name, f)

		// Copy -> Write
		// Copy file f to file f2
		name = "Copy"
		w2, f2 := makeOffsetWriter(name)
		io.Copy(w2, f)
		checkContent(name, f2)
		f.Close()
		f2.Close()
	}()

	// Copy -> WriteTo -> Write
	// Note: strings.Reader implements the io.WriterTo interface.
	name = "Write_Of_Copy_WriteTo"
	//wg.Add(1)
	func() {
		w, f := makeOffsetWriter(name)
		io.Copy(w, strings.NewReader(content))
		checkContent(name, f)
		f.Close()
		//wg.Done()
	}()
	//wg.Wait()
}
