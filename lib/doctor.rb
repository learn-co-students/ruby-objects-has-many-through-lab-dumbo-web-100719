require 'pry'

class Doctor

attr_accessor :name
@@all = []

def initialize(name)
    @name = name
    @@all << self
    end

def self.all
    @@all
end

def appointments
    Appointment.all.select do |appointment|
        #binding.pry
        appointment.doctor == self 
    end
end

def new_appointment (patient, date)
    #binding.pry
    newappointment = Appointment.new(date, patient, self)
end

def patients
    appointments.map do |appointment|
        #binding.pry
        appointment.patient
    end
end

end