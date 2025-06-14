package main

func main() {
	x := BTreeG[int]{}
	x.ascend(10, true)
}

type BTreeG[T any] struct{}

func (tr *BTreeG[T]) ascend(pivot T, mut bool,
) {
	if tr.lock(mut) {
		defer tr.unlock(mut)
	}
}

func (tr *BTreeG[T]) lock(write bool) bool {
	return true
}

func (tr *BTreeG[T]) unlock(write bool) bool {
	return true
}
