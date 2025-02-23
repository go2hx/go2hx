package main

func main() {
    var (
        buf            int = 10
        buf__pointer__     = &buf
        logger             = test(buf__pointer__)
    )
    _ = logger
}
func test(i *int) int {
    return *i
}
