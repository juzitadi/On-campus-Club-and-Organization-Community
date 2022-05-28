package Service;
import java.util.ArrayList;
import Objects.User;
import Objects.activity;

public class ActivitySortingImplement implements ActivitySorting{
	@Override
	public ArrayList<activity> time() {
		// TODO Auto-generated method stub
		Database.GetActivityImplement r = new Database.GetActivityImplement();
		ArrayList<activity> activity = r.result();
		for(int i = 0; i < activity.size()-1; i++) {
			for (int j = 0; j < activity.size()-1-i; j++) {
				int a = activity.get(j).getTime().charAt(6);
				int b = (activity.get(j+1).getTime().charAt(6));
				if (a>b) {
                    activity temp = activity.get(j);
                    activity.set(j, activity.get(j+1));
                    activity.set(j+1,temp);
                }
            }
		}
		return activity;
	}

	@Override
	public ArrayList<activity> remainTicket() {
		// TODO Auto-generated method stub
		Database.GetActivityImplement r = new Database.GetActivityImplement();
		ArrayList<activity> activity = r.result();
		for(int i = 0; i < activity.size()-1; i++) {
			for (int j = 0; j < activity.size()-1-i; j++) {
                if (activity.get(j).getTicketNum()> activity.get(j+1).getTicketNum()) {
                    activity temp = activity.get(j);
                    activity.set(j, activity.get(j+1));
                    activity.set(j+1,temp);
                }
            }
		}
		return activity;
	}
	
	@Override
	public ArrayList<activity> activitiesSearch(String keyword){
		Database.GetActivityImplement r = new Database.GetActivityImplement();
		ArrayList<activity> activity = r.searchResult(keyword);
		
		return activity;
	}

	@Override
	public Objects.activity releaseActivity() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Objects.activity deleteActivity() {
		// TODO Auto-generated method stub
		return null;
	}
}

