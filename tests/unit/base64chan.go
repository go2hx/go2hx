package main

import (
	"encoding/base64"
	"errors"
	"fmt"
	"io"
	"os"
	"time"
)

type nextRead struct {
	n   int   // bytes to return
	err error // error to return
}

// faultInjectReader returns data from source, rate-limited
// and with the errors as written to nextc.
type faultInjectReader struct {
	source string
	nextc  <-chan nextRead
}

func (r *faultInjectReader) Read(p []byte) (int, error) {
	nr := <-r.nextc
	if len(p) > nr.n {
		p = p[:nr.n]
	}
	n := copy(p, r.source)
	r.source = r.source[n:]
	return n, nr.err
}

func main() {
	next := make(chan nextRead, 10)
	wantErr := errors.New("my error")
	println("add to buffered chan")
	next <- nextRead{5, nil}
	next <- nextRead{10, wantErr}
	next <- nextRead{0, wantErr}
	println("after added to buffered chan")
	d := base64.NewDecoder(base64.StdEncoding, &faultInjectReader{
		source: "VHdhcyBicmlsbGlnLCBhbmQgdGhlIHNsaXRoeSB0b3Zlcw==", // twas brillig...
		nextc:  next,
	})
	errc := make(chan error, 1)
	println("create goroutine")
	go func() {
		_, err := io.ReadAll(d)
		errc <- err
	}()
	println("select start")
	select {
	case err := <-errc:
		if err != wantErr {
			fmt.Printf("got error %v; want %v", err, wantErr)
			os.Exit(1)
		}
	case <-time.After(5 * time.Second):
		fmt.Printf("timeout; Decoder blocked without returning an error")
		os.Exit(1)
	}
	println("select end")
}
