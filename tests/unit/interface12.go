package main

const (
	SIGKILL = Signal(0x9)
)

type Signal int

func (s Signal) Signal() {}

func (s Signal) String() string {
	return "signal"
}

type SignalInterface interface {
	String() string
	Signal() // to distinguish from other Stringers
}

var kill SignalInterface = SIGKILL

func main() {
	if kill.String() != "signal" {
		panic("wrong value")
	}
}
