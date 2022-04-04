package main

const (
	EINTR       = 0x80
	EMFILE      = 0x70
	EAGAIN      = 0x50
	EWOULDBLOCK = 0x40
	ETIMEDOUT   = 0x30
)

type Errno uintptr

func (e Errno) Timeout() bool {
	return e == EAGAIN || e == EWOULDBLOCK || e == ETIMEDOUT
}

func (e Errno) Temporary() bool {
	return e == EINTR || e == EMFILE || e.Timeout()
}

func main() {
	var x Errno = 10
	println(x.Timeout())
}
