# Write your code here.
require "pry"

def badge_maker(name)
  return "Hello, my name is #{name}."

end

def batch_badge_creator(array)
  array.collect do |attendee|
    badge_maker(attendee)
  end
end


## what data am I working with / what data do I need?
## what am I trying to build?
## what do I ultimately need to return?

## takes in an array of attendee names
## needs to return an array of room room_assignments in the form "Hello, #{name}! You'll be assigned to room #{number}!"

# def assign_rooms(attendees)
#   room_assignments = []
#   attendees.each_with_index do |attendee, index|
#     room_assignments << "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
#   end
#   room_assignments
# end

def assign_rooms(attendees)
  attendees.map.with_index(1) do |attendee, index|
    "Hello, #{attendee}! You'll be assigned to room #{index}!"
  end
end

def assign_rooms(array)
  array.each_with_index do |assigned, index|
    array[array.index(assigned)] = "Hello, #{assigned}! You'll be assigned to room #{index+1}!"
  end
end

def printer(attendees)
  # badges = batch_badge_creator(attendees)
  
  # badges.each |badge|
  #   puts badge
  #end
  binding.pry
  batch_badge_creator(attendees).each do |attendee|
    puts attendee
  end

  # assign_rooms(attendees).each do |room|
  #   puts room
  #end
end
