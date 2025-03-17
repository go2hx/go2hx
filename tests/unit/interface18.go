package main

func main() {
	var err any = errorUncomparable{}
	_, ok := err.(interface{ Is(error) bool })
	if !ok {
		panic("not able to cast")
	}
}

type errorUncomparable struct{}

func (errorUncomparable) Error() string {
	return "uncomparable error"
}

func (errorUncomparable) Is(target error) bool {
	ok := true
	if false {
		_, ok = target.(errorUncomparable)
	}
	return ok
}
