package salesproperty.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import salesproperty.dao.FlatDAO;
import salesproperty.model.FlatEntity;

import java.util.List;

@Service
public class FlatService {
    private FlatDAO flatDAO;

    public void setFlatDAO(FlatDAO flatDAO) {
        this.flatDAO = flatDAO;
    }

    @Transactional
    public void addFlat(FlatEntity flatEntity) {
        this.flatDAO.addFlat(flatEntity);
    }

    @Transactional
    public void updateFlat(FlatEntity flatEntity) {
        this.flatDAO.updateFlat(flatEntity);
    }

    @Transactional
    public void removeFlat(int id) {
        this.flatDAO.removeFlat(id);
    }

    @Transactional
    public FlatEntity getFlatById(int id) {
        return this.flatDAO.getFlatById(id);
    }

    @Transactional
    public List<FlatEntity> listFlats() {
        return this.flatDAO.listFlats();
    }

}
