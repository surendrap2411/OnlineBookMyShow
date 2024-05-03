package content;

import content.Movie;
import content.Timeslot;
import content.screen;

public class Show {

    public static class ShowS1T1 extends Movie implements screen, Timeslot {
        private int booked;
        private int capacity;

        public ShowS1T1(String title, String genre, int duration, String director, int capacity) {
            super(title, genre, duration, director);
            this.capacity = capacity;
            reset();
        }

        public void reset() {
            booked = 0;
        }

        public boolean bookSeats(int num) {
            if (booked + num > capacity) {
                return false;
            } else {
                booked += num;
                return true;
            }
        }

        public String getShowDetails() {
            return "ShowS1T1: " + getTitle() + ", Genre: " + getGenre() +
                    ", Duration: " + getDuration() + " mins, Director: " + getDirector() +
                    ", Capacity: " + capacity + ", Booked: " + booked;
        }

		@Override
		public int getStartTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getEndTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getCapacity() {
			// TODO Auto-generated method stub
			return capacity;
		}

		public int getBooked() {
			// TODO Auto-generated method stub
			return booked;
		}

		public void setBooked(int booked2) {
			// TODO Auto-generated method stub
			this.booked=booked2;
		}

		public boolean bookNew(int number) {
			// TODO Auto-generated method stub
			return false;
		}

		
    }

    public static class ShowS1T2 extends Movie implements screen, Timeslot {
        private int booked;
        private int capacity;

        public ShowS1T2(String title, String genre, int duration, String director, int capacity) {
            super(title, genre, duration, director);
            this.capacity = capacity;
            reset();
        }

        public void reset() {
            booked = 0;
        }

        public boolean bookSeats(int num) {
            if (booked + num > capacity) {
                return false;
            } else {
                booked += num;
                return true;
            }
        }

        public String getShowDetails() {
            return "ShowS1T2: " + getTitle() + ", Genre: " + getGenre() +
                    ", Duration: " + getDuration() + " mins, Director: " + getDirector() +
                    ", Capacity: " + capacity + ", Booked: " + booked;
        }

		@Override
		public int getStartTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getEndTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getCapacity() {
			// TODO Auto-generated method stub
			return capacity;
		}

		public int getBooked() {
			// TODO Auto-generated method stub
			return booked;
		}

		public void setBooked(int booked2) {
			// TODO Auto-generated method stub
			this.booked=booked2;
		}

		public boolean bookNew(int number) {
			// TODO Auto-generated method stub
			return false;
		}

		
    }

    public static class ShowS1T3 extends Movie implements screen, Timeslot {
        private int booked;
        private int capacity;

        public ShowS1T3(String title, String genre, int duration, String director, int capacity) {
            super(title, genre, duration, director);
            this.capacity = capacity;
            reset();
        }

        public void reset() {
            booked = 0;
        }

        public boolean bookSeats(int num) {
            if (booked + num > capacity) {
                return false;
            } else {
                booked += num;
                return true;
            }
        }

        public String getShowDetails() {
            return "ShowS1T3: " + getTitle() + ", Genre: " + getGenre() +
                    ", Duration: " + getDuration() + " mins, Director: " + getDirector() +
                    ", Capacity: " + capacity + ", Booked: " + booked;
        }

		@Override
		public int getStartTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getEndTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getCapacity() {
			// TODO Auto-generated method stub
			return capacity;
		}

		public int getBooked() {
			// TODO Auto-generated method stub
			return booked;
		}

		public void setBooked(int booked2) {
			// TODO Auto-generated method stub
			this.booked=booked2;
		}

		public boolean bookNew(int number) {
			// TODO Auto-generated method stub
			return false;
		}

		
    }

    public static class ShowS2T1 extends Movie implements screen, Timeslot {
        private int booked;
        private int capacity;

        public ShowS2T1(String title, String genre, int duration, String director, int capacity) {
            super(title, genre, duration, director);
            this.capacity = capacity;
            reset();
        }

        public void reset() {
            booked = 0;
        }

        public boolean bookSeats(int num) {
            if (booked + num > capacity) {
                return false;
            } else {
                booked += num;
                return true;
            }
        }

        public String getShowDetails() {
            return "ShowS2T1: " + getTitle() + ", Genre: " + getGenre() +
                    ", Duration: " + getDuration() + " mins, Director: " + getDirector() +
                    ", Capacity: " + capacity + ", Booked: " + booked;
        }

		@Override
		public int getStartTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getEndTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getCapacity() {
			// TODO Auto-generated method stub
			return capacity;
		}

		public int getBooked() {
			// TODO Auto-generated method stub
			return booked;
		}

		public void setBooked(int booked2) {
			// TODO Auto-generated method stub
			this.booked=booked2;
		}

		public boolean bookNew(int number) {
			// TODO Auto-generated method stub
			return false;
		}

		
    }

    // ... (similarly for ShowS2T2, ShowS2T3, ShowS3T1, ShowS3T2, ShowS3T3)

    public static class ShowS2T2 extends Movie implements screen, Timeslot {
        private int booked;
        private int capacity;

        public ShowS2T2(String title, String genre, int duration, String director, int capacity) {
            super(title, genre, duration, director);
            this.capacity = capacity;
            reset();
        }

        public void reset() {
            booked = 0;
        }

        public boolean bookSeats(int num) {
            if (booked + num > capacity) {
                return false;
            } else {
                booked += num;
                return true;
            }
        }

        public String getShowDetails() {
            return "ShowS2T2: " + getTitle() + ", Genre: " + getGenre() +
                    ", Duration: " + getDuration() + " mins, Director: " + getDirector() +
                    ", Capacity: " + capacity + ", Booked: " + booked;
        }

		@Override
		public int getStartTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getEndTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getCapacity() {
			// TODO Auto-generated method stub
			return capacity;
		}

		public int getBooked() {
			// TODO Auto-generated method stub
			return booked;
		}

		public void setBooked(int booked2) {
			// TODO Auto-generated method stub
			this.booked=booked2;
		}

		public boolean bookNew(int number) {
			// TODO Auto-generated method stub
			return false;
		}

		
    }

    public static class ShowS2T3 extends Movie implements screen, Timeslot {
        private int booked;
        private int capacity;

        public ShowS2T3(String title, String genre, int duration, String director, int capacity) {
            super(title, genre, duration, director);
            this.capacity = capacity;
            reset();
        }

        public void reset() {
            booked = 0;
        }

        public boolean bookSeats(int num) {
            if (booked + num > capacity) {
                return false;
            } else {
                booked += num;
                return true;
            }
        }

        public String getShowDetails() {
            return "ShowS2T3: " + getTitle() + ", Genre: " + getGenre() +
                    ", Duration: " + getDuration() + " mins, Director: " + getDirector() +
                    ", Capacity: " + capacity + ", Booked: " + booked;
        }

		@Override
		public int getStartTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getEndTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getCapacity() {
			// TODO Auto-generated method stub
			return capacity;
		}

		public int getBooked() {
			// TODO Auto-generated method stub
			return booked;
		}

		public void setBooked(int booked2) {
			// TODO Auto-generated method stub
			this.booked=booked2;
		}

		public boolean bookNew(int number) {
			// TODO Auto-generated method stub
			return false;
		}

		
    }

    public static class ShowS3T1 extends Movie implements screen, Timeslot {
        private int booked;
        private int capacity;

        public ShowS3T1(String title, String genre, int duration, String director, int capacity) {
            super(title, genre, duration, director);
            this.capacity = capacity;
            reset();
        }

        public void reset() {
            booked = 0;
        }

        public boolean bookSeats(int num) {
            if (booked + num > capacity) {
                return false;
            } else {
                booked += num;
                return true;
            }
        }

        public String getShowDetails() {
            return "ShowS3T1: " + getTitle() + ", Genre: " + getGenre() +
                    ", Duration: " + getDuration() + " mins, Director: " + getDirector() +
                    ", Capacity: " + capacity + ", Booked: " + booked;
        }

		@Override
		public int getStartTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getEndTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getCapacity() {
			// TODO Auto-generated method stub
			return capacity;
		}

		public int getBooked() {
			// TODO Auto-generated method stub
			return booked;
		}

		public void setBooked(int booked2) {
			// TODO Auto-generated method stub
			this.booked=booked2;
		}

		public boolean bookNew(int number) {
			// TODO Auto-generated method stub
			return false;
		}

		
    }

    public static class ShowS3T2 extends Movie implements screen, Timeslot {
        private int booked;
        private int capacity;

        public ShowS3T2(String title, String genre, int duration, String director, int capacity) {
            super(title, genre, duration, director);
            this.capacity = capacity;
            reset();
        }

        public void reset() {
            booked = 0;
        }

        public boolean bookSeats(int num) {
            if (booked + num > capacity) {
                return false;
            } else {
                booked += num;
                return true;
            }
        }

        public String getShowDetails() {
            return "ShowS3T2: " + getTitle() + ", Genre: " + getGenre() +
                    ", Duration: " + getDuration() + " mins, Director: " + getDirector() +
                    ", Capacity: " + capacity + ", Booked: " + booked;
        }

		@Override
		public int getStartTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getEndTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getCapacity() {
			// TODO Auto-generated method stub
			return capacity;
		}

		public int getBooked() {
			// TODO Auto-generated method stub
			return booked;
		}

		public void setBooked(int booked2) {
			// TODO Auto-generated method stub
			this.booked=booked2;
		}

		public boolean bookNew(int number) {
			// TODO Auto-generated method stub
			return false;
		}

		
    }

    public static class ShowS3T3 extends Movie implements screen, Timeslot {
        private int booked;
        private int capacity;

        public ShowS3T3(String title, String genre, int duration, String director, int capacity) {
            super(title, genre, duration, director);
            this.capacity = capacity;
            reset();
        }

        public void reset() {
            booked = 0;
        }

        public boolean bookSeats(int num) {
            if (booked + num > capacity) {
                return false;
            } else {
                booked += num;
                return true;
            }
        }

        public String getShowDetails() {
            return "ShowS3T3: " + getTitle() + ", Genre: " + getGenre() +
                    ", Duration: " + getDuration() + " mins, Director: " + getDirector() +
                    ", Capacity: " + capacity + ", Booked: " + booked;
        }

		@Override
		public int getStartTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getEndTime() {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public int getCapacity() {
			// TODO Auto-generated method stub
			return capacity;
		}

		public int getBooked() {
			// TODO Auto-generated method stub
			return booked;
		}

		public void setBooked(int booked2) {
			// TODO Auto-generated method stub
			this.booked=booked2;
		}

		public boolean bookNew(int number) {
			// TODO Auto-generated method stub
			return false;
		}

		
    }
}