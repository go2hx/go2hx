package main

type Word uint
type nat []Word

func (z nat) make(n int) nat {
	return []Word{0}
}

func main() {
	temps := []*nat{{}}
	depth := 0
	*temps[depth] = nil
	if temps == nil || &temps == nil {
		panic("error")
	}
}
