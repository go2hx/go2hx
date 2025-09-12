package main

func main() {
	var p *[4]int = nil
	defer func() {
		if recover() == nil {
			panic("nil pointer range did not panic")
		}
	}()
	for _, v := range *p {
		println(v)
	}
}
