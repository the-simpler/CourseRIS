package salesproperty.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import salesproperty.dao.RequestDAO;
import salesproperty.model.RequestEntity;

import java.util.List;

@Service
public class RequestService {
    private RequestDAO requestDAO;


    public void setRequestDAO(RequestDAO requestDAO) {
        this.requestDAO = requestDAO;
    }

    @Transactional
    public void addRequest(RequestEntity requestEntity) {
        this.requestDAO.addRequest(requestEntity);
    }

    @Transactional
    public void updateRequest(RequestEntity requestEntity) {
        this.requestDAO.updateRequest(requestEntity);
    }

    @Transactional
    public void removeRequest(int id) {
        this.requestDAO.removeRequest(id);
    }

    @Transactional
    public RequestEntity getRequestById(int id) {
        return this.requestDAO.getRequestById(id);
    }

    @Transactional
    public List<RequestEntity> listRequests() {
        return this.requestDAO.listRequests();
    }
}
