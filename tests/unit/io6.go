package main

import "sync"

type pipe struct {
	wrCh chan []byte
	rdCh chan int

	once sync.Once // Protects closing done
	done chan struct{}
}

func main() {
	p := pipe{}
	p.write([]byte{})
}

func (p *pipe) write(b []byte) (n int, err error) {

	select {
	case <-p.done:

	default:

	}
	return
}
