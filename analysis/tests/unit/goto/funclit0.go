package main

func main() {
	iterSmall := func() int {
		if false {

		}
		println("hi")
		return 0
	}
	_ = iterSmall()
	goto end
end:
	println("end")
}
