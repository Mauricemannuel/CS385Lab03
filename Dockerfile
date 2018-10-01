FROM golang:1.9
ADD main.go main.go
CMD ["go", "run", "main.go"]
