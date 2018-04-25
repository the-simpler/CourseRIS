package salesproperty.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import salesproperty.dao.MessageDAO;
import salesproperty.model.MessageEntity;

import java.util.List;

@Service
public class MessageService {
    private MessageDAO messageDAO;

    public void setMessageDAO(MessageDAO messageDAO) {
        this.messageDAO = messageDAO;
    }

    @Transactional
    public void addMessage(MessageEntity messageEntity) {
        this.messageDAO.addMessage(messageEntity);
    }

    @Transactional
    public void updateMessage(MessageEntity messageEntity) {
        this.messageDAO.updateMessage(messageEntity);
    }

    @Transactional
    public void removeMessage(int id) {
        this.messageDAO.removeMessage(id);
    }

    @Transactional
    public MessageEntity getMessageById(int id) {
        return this.messageDAO.getMessageById(id);
    }

    @Transactional
    public List<MessageEntity> listMessages() {
        return this.messageDAO.listMessages();
    }
}
