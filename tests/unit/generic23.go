package main

func main() {
	f := &FileSet{}
	f.AddFile("", 0, 0)
}

type FileSet struct {
	last Pointer[File] // cache of last file looked up
}

func (s *FileSet) AddFile(filename string, base, size int) *File {
	f := &File{}
	s.last.Store(f)
	return f
}

type File struct{}

type Pointer[T any] struct{}

func (p Pointer[T]) Store(x *T) {

}
