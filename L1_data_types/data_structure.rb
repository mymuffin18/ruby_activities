# Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person. 


contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
            ["avion@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}


obj = {}
for i in 0...contact_data.length do
    obj[i] = {:email => contact_data[i][0], :address => contact_data[i][1], :phone => contact_data[i][2]}
end

contacts["John Cruz"] = obj[0]
contacts["Avion School"] = obj[1]


# Expected output:
#  {
#    "John Cruz"=>{:email=>"john@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Avion School"=>{:email=>"avion@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }