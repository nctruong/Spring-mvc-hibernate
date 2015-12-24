package model;

public class Score {

	private Integer score_id;
	private String subject;
	private float score;

	private int student_id;

	private Student student = new Student();

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Integer getScore_id() {
		return score_id;
	}

	public void setScore_id(Integer score_id) {
		this.score_id = score_id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public float getScore() {
		return score;
	}

	public void setScore(float score) {
		this.score = score;
	}

	public int getStudent_id() {
		return student_id;
	}

	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}

}
