package main

import (
	"encoding/json"
	"net/http"
)

type User struct {
	Name string
	Age  int
}

func main() {
	http.HandleFunc("/index.html", getUser)
	http.ListenAndServe(":3001", nil)
}

func getUser(w http.ResponseWriter, r *http.Request) {
	user := User{"David", 28}
	enc := json.NewEncoder(w)
	enc.Encode(user)
}
