require "pry"
class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor_instance, date_instance)
        new_app =Appointment.new(date_instance, self, doctor_instance)
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appointment_instance|
            appointment_instance.patient == self
        end
    end

    def doctors
        self.appointments.map do |appointment_instance|
            appointment_instance.doctor
        end
    end

end
