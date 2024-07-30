package backend
import (
  "io"
  "net/http"
)
func backend(w http.ResponseWriter, r *http.Request)  {
  io.WriteString(w, "Hello, backend!")
}
func main()  {
  http.HandleFunc("/", backend)
  http.ListenAndServe(":8080", nil)
}