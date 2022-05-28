package Database;
import java.util.ArrayList;

import Objects.activity;


public interface SearchActivityDatabase {
	public ArrayList<activity> SearchResult(String input, String category);
}
