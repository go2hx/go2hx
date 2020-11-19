package student

import "fmt"

type Student struct {
	Id int
	Name string
}

func (s Student) ToString() {
	fmt.Println("Student:",s.Name,"id:",s.Id)
}