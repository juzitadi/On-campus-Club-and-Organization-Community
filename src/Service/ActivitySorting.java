package Service;
import java.util.ArrayList;
import java.lang.Object;
import Objects.activity;

public interface ActivitySorting {
	public ArrayList<activity> time();
	public ArrayList<activity> remainTicket();
	public ArrayList<activity> activitiesSearch(String keyword);
	public Objects.activity releaseActivity();
	public Objects.activity deleteActivity();
}
