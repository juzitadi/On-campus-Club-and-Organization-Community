package Objects;

public class activity {
	private String clubname;
	private String activityname;
	private String location;
	private int ticketNum;
	private String time;
	private String type;
	private String detailHref;
	private String clubuser;
	private String activityID;
	private String comment;
	private String clubId;
	private String id;
	
	public activity(String clubname, String activityname, String location, int ticketNum, String time, String type, String detailHref,String clubuser, String activityID, String comment) {
		this.clubname = clubname;
		this.activityname = activityname;
		this.location = location;
		this.ticketNum = ticketNum;
		this.time = time;
		this.type = type;
		this.detailHref = detailHref;
		this.clubuser = clubuser;
		this.activityID = activityID;
		this.comment = comment;
	}

	public String getClubname() {
		return clubname;
	}

	public void setClubname(String clubname) {
		this.clubname = clubname;
	}

	public String getActivityname() {
		return activityname;
	}

	public void setActivityname(String activityname) {
		this.activityname = activityname;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getTicketNum() {
		return ticketNum;
	}

	public void setTicketNum(int ticketNum) {
		this.ticketNum = ticketNum;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDetailHref() {
		return detailHref;
	}

	public void setDetailHref(String detailHref) {
		this.detailHref = detailHref;
	}

	public String getClubuser() {
		return clubuser;
	}

	public void setClubuser(String clubuser) {
		this.clubuser = clubuser;
	}

	public String getActivityID() {
		return activityID;
	}

	public void setActivityID(String activityID) {
		this.activityID = activityID;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getClubId() {
		return clubId;
	}

	public void setClubId(String clubId) {
		this.clubId = clubId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
	
}
