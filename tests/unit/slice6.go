package main

type Word uint
type nat []Word

func (z nat) make(n int) nat {
	return []Word{0}
}

func main() {
	var temps *[]*nat = new([]*nat)
	*temps = nil
}
