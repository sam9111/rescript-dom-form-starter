@val external document: {..} = "document"
@val external window: {..} = "window"

let textView = document["getElementById"]("textView")

let updateView = event => {
  textView["innerText"] = event["target"]["value"]
}

let textEditor = document["getElementById"]("textEditor")
textEditor["addEventListener"]("input", updateView)

let selectSmall = document["getElementById"]("selectSmall")
let selectLarge = document["getElementById"]("selectLarge")
let selectRegular = document["getElementById"]("selectRegular")

selectSmall["addEventListener"]("change", _ => {
  textView["classList"]["add"]("text-sm")
  textView["classList"]["remove"]("text-2xl", "text-6xl")
})

selectRegular["addEventListener"]("change", _ => {
  textView["classList"]["add"]("text-2xl")
  textView["classList"]["remove"]("text-sm", "text-6xl")
})

selectLarge["addEventListener"]("change", _ => {
  textView["classList"]["add"]("text-6xl")
  textView["classList"]["remove"]("text-sm", "text-2xl")
})
