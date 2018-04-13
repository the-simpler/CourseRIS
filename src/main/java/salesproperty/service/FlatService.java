package salesproperty.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import salesproperty.dao.FlatDAO;
import salesproperty.model.Flat;

import java.util.List;

@Service
public class FlatService {
    private FlatDAO flatDAO;

    public void setFlatDAO(FlatDAO flatDAO) {
        this.flatDAO = flatDAO;
    }

    @Transactional
    public void addFlat(Flat flat) {
        this.flatDAO.addFlat(flat);
    }

    @Transactional
    public void updateFlat(Flat flat) {
        this.flatDAO.updateFlat(flat);
    }

    @Transactional
    public void removeFlat(int id) {
        this.flatDAO.removeFlat(id);
    }

    @Transactional
    public Flat getFlatById(int id) {
        return this.flatDAO.getFlatById(id);
    }

    @Transactional
    public List<Flat> listFlats() {
        return this.flatDAO.listFlats();
    }

}
