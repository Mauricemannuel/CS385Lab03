package main

import (
        "fmt"
        "os"
        "net/http"
)

func main() {
        name, err := os.Hostname()
        if err != nil {
                panic(err)
        }
        handle := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
                fmt.Fprintf(w, "%s\n", name)
        })
        //http.HandleFunc("/", handle)
        http.ListenAndServe(":80", handle)
}
