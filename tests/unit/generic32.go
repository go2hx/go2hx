package main

func main() {
	f(10, 10, 10)
}

func f[T int | string](args ...T) {

}
