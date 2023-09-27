package main

func main() {
	f(10, []int{})
}

func f[T int | float32, K []T](t T, k K) {

}
