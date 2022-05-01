package main

type zone struct{}

func main() {
	cache := &zone{}
	if zone := cache; zone != nil {

	} else {
		panic("issue")
	}
}
