
package main

func main() {
	m(10)
	m(10.2)
}

func m[T int | float64](x T) T {
	return x + x
}
