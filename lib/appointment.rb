require 'pry'
class Appointment

@@all =[]
attr_accessor :patient, :date, :doctor

def initialize(date, patient, doctor)
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
    #binding.pry
end

def self.all
    @@all
end



end