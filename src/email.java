import org.apache.commons.mail.*;

/**
 * @author josh
 *
 */
public class email {
	public static void main(String[] args) {
		Email email = new SimpleEmail();
		email.setHostName("arbitrary.smtp.server");
		email.setSmtpPort(587);
		email.setAuthenticator(new DefaultAuthenticator("supahawesomeusername",
				"supersecretpassword"));
		email.setTLS(true);
		try {
			email.setFrom("example@example.com");
			email.setSubject("I like pie");
			email.setMsg("A new user has registered! their username is: " + args[0]
			       + " \nTheir bio is: " + args[1]
			       + " \nTheir references are: " + args[2]);
			email.addTo("iamyou@example.com");
			email.send();
		} catch (EmailException e) {
			e.printStackTrace();
		}
	}
}
