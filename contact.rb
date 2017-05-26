class Contact
  attr_accessor :first_name, :last_name, :email, :note
  attr_reader :id

  @@contacts = []
  #wanting to look at all instances of contacts.
  @@next_id = 1000

    @@next_id += 1

  def full_name
    "#{first_name} #{last_name}"
  end

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note)
      @first_name = first_name
      @last_name = last_name
      @email = email
      @note = note
      @id = @@next_id
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note)
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    new_contact

  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    end

  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attribute, value)
    if attribute == "first_name"
      self.first_name = value
    elsif attribute == "last_name"
      self.last_name = value
    elsif attribute == "email"
      self.email = value
    elsif attribute == "note"
      self.note = value
    end
end
  # def first_name_update(value)

    # in here, self refers to the instance being acted up

# instance method usage: melina.update(stuff1, stuff2)
#melina.update("first_name", "MELINA2")
# class method usage: Contact.find_by(thing1, thing2)


  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by(attribute, value)

    if attribute == "first_name"
        @@contacts.each do |contact|
        if value == contact.first_name
          return contact
          end
      end


    elsif attribute == "last_name"
          @@contacts.each do |contact|
          if value == contact.last_name
            return contact
          end

      end

    elsif attribute == "email"
            @@contacts.each do |contact|
            if value == contact.email
              return contact
            end
        end
    elsif attribute == "note"
              @@contacts.each do |contact|
              if value == contact.note
                return contact
            end
          end
        end
  end

  # This method should delete all of the contacts
  def self.delete_all
    @@contacts.clear
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete
    @@contacts.delete(self)
  end

  # Feel free to add other methods here, if you need them.

end
