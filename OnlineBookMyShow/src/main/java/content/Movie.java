package content;

public class Movie {
    private String title;
    private String genre;
    private int duration;
    private String director;

    public Movie(String title, String genre, int duration, String director) {
        this.title = title;
        this.genre = genre;
        this.duration = duration;
        this.director = director;
    }

    public String getTitle() {
        return title;
    }

    public String getGenre() {
        return genre;
    }

    public int getDuration() {
        return duration;
    }

    public String getDirector() {
        return director;
    }
}