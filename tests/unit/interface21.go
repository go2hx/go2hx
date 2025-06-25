package main

func main() {

}

type Reader struct{}

func (r *Reader) readForm() {
	// os.File.ReadFrom will allocate its own copy buffer if we let io.Copy use it.
	type writerOnly struct{ writer }
	w := writerOnly{nil}
	f := func(w writer) {

	}
	f(w)
}

type writer interface {
	write()
}
