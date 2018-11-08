def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  #your code here
  contacts.each do |person, info|
  
    info.each do |person_field, value|
      if person_field == :favorite_icecream_flavors
        value.delete_if do |flavor|
          flavor = "strawberry"
        end
      end
    end
  end

  #  icecream = contacts["Freddy Mercury"][:favorite_icecream_flavors]
  #   icecream.delete_if do |flavor|
  #     flavor = "strawberry"
  #   end
  #remember to return your newly altered contacts hash!
  contacts
end
