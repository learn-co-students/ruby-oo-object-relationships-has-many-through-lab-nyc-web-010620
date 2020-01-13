require_relative "./appointment.rb"
require_relative "./doctor.rb"
require 'pry'

class Patient
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select do |appt|
            appt.patient == self
        end
    end

    def new_appointment(doctor,date)
        Appointment.new(date,self,doctor)
    end

    def doctors
        self.appointments.map do |appt|
            appt.doctor
        end
    end


end