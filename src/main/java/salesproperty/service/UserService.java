package salesproperty.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import salesproperty.dao.UserDAO;
import salesproperty.model.UserEntity;

import java.util.List;

@Service
public class UserService {
    private UserDAO userDAO;

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }

    @Transactional
    public void addUser(UserEntity userEntity) {
        this.userDAO.addUser(userEntity);
    }

    @Transactional
    public void updateUser(UserEntity userEntity) {
        this.userDAO.updateUser(userEntity);
    }

    @Transactional
    public void removeUser(int id) {
        this.userDAO.removeUser(id);
    }

    @Transactional
    public UserEntity getUserById(int id) {
        return this.userDAO.getUserById(id);
    }

    @Transactional
    public List<UserEntity> listUsers() {
        return this.userDAO.listUsers();
    }

    @Transactional
    public UserEntity getUserByNicknameAndPassword(String username, String password){
        return this.userDAO.getUserByNicknameAndPassword(username,password);
    }
    @Transactional
    public UserEntity getUserByNickname(String username){
        return this.userDAO.getUserByNickname(username);
    }
}
