
use m_boad;

desc user;

Insert INTO user(username, password, email, userRole, address, createDate)
	values (?, ?, ?, ?, ?, now() );
    
    select *
    from user;
    
    UPDATE user
	SET username = "세종"
    WHERE email = "a@nate.com";
    
    update user set username = ? where email = ?;