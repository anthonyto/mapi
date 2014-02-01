x = 1

while x < 10 do
  if x.even?
    switch = "offered"
  else
    switch = "requested"
  end
  # `curl -X POST https://api.mongohq.com/databases/mealr_test/collections/meals/documents?_apikey=rzrzjzkb916je87wz6s4 \
  `curl -X POST localhost:3000/meals \
  -H "Content-Type: application/json" \
  -d '{ "name":"test#{x}", "type":"#{switch}", "email":"foo@bar.com", "lat":"100", "long":"200", "address":"123 foo st", "description":"Some good food yo"}'`

  x += 1
end