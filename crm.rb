require_relative 'contact'

class CRM

  def initialize(name)
      puts "Okay, this CRM has the name #{name}"
    e

  def main_menu
    while true
      print_main_menu
      user_selected = gets.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts 'Enter a number: '

  end

    def call_option(user_selected)
      case user_selected
      when 1 then add_new_contact
      when 2 then modify_existing_contact
      when 3 then delete_contact
      when 4 then display_all_contacts
      when 5 then search_by_attribute
      when 6 then exit
      end
    end


  def add_new_contact
    print 'Enter First Name: '
    first_name = gets.chomp

    print 'Enter Last Name: '
    last_name = gets.chomp

    print 'Enter Email Address: '
    email = gets.chomp

    print 'Enter a Note: '
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)

  end

  def modify_existing_contact
    puts "Enter the first name of the contact you want to modify"
    new_modify = gets.chomp

    contact_modify = Contact.find_by("first_name", new_modify)

    puts "What attribute do you want to modify?"
    modification = gets.chomp

    puts "What is the new attribute?"
    new_mod = gets.chomp

    contact_modify.update(modification, new_mod)

  end

  def delete_contact
    puts "What is the first name of the contact do you want to delete?"
    contact_delete = gets.chomp
    contact_to_delete = Contact.find_by("first_name", contact_delete)
      puts "Contact deleted"
      contact_to_delete.delete
  end

  def display_all_contacts
    puts "Display all contacts"
    p Contact.all

  end

  def search_by_attribute
    puts "What is the attribute you want to search?"
    attribute_search = gets.chomp
    contact_to_search = Contact.find_by(attribute_search)
  end

    a_crm_app = CRM.new("my_CRM")
    a_crm_app.main_menu

end
