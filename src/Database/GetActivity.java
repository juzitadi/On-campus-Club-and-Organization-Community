package Database;

import java.util.ArrayList;
import Objects.activity;
import java.lang.Object;

public interface GetActivity {
	public ArrayList<activity> result();
	public ArrayList<activity> searchResult(String keyword);
}
