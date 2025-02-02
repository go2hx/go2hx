package main

import (
	"encoding/base64"
	"errors"
	"fmt"
	"io"
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
	next <- nextRead{5, nil}
	next <- nextRead{10, wantErr}
	next <- nextRead{0, wantErr}
	d := base64.NewDecoder(base64.StdEncoding, &faultInjectReader{
		source: "VHdhcyBicmlsbGlnLCBhbmQgdGhlIHNsaXRoeSB0b3Zlcw==", // twas brillig...
		nextc:  next,
	})
	errc := make(chan error, 1)
	go func() {
		_, err := io.ReadAll(d)
		errc <- err
	}()
	select {
	case err := <-errc:
		if err != wantErr {
			fmt.Printf("got error %v; want %v\n", err, wantErr)
		}
	case <-time.After(5 * time.Second):
		fmt.Printf("timeout; Decoder blocked without returning an error\n")
	}
}
