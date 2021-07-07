class Appointment
    attr_accessor :date, :patient, :doctor
    @@all = []

    def initialize(date,patient,doctor)
        @date = "Monday, August 1st"
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end
end