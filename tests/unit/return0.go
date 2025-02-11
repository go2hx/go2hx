package main

func main() {
	decodeLiteral()
}

func decodeLiteral() (op []int, err error) {
	return nil, errorType{}
}

type errorType struct{}

func (errorType) Error() string {
	return "error"
}
