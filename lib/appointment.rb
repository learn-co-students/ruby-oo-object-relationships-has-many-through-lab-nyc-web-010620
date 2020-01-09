class Appointment
    attr_reader :date, :patient, :doctor

    @@all = []

    def initialize(date,patient,doctor)
        @date = date
        @patient = patient
        # puts "@patient: #{@patient}"
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end
end