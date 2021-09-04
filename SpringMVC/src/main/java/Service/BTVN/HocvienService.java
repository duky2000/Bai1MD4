package Service.BTVN;

import Model.BTVN.Hocvien;

import java.util.ArrayList;
import java.util.List;

public class HocvienService {
   public ArrayList<Hocvien> list = new ArrayList<>();

    public HocvienService() {
        list.add(new Hocvien("ky", "25/09/2000", "ha nam", "09823238", "ky@gmail.com", "IT"));
        list.add(new Hocvien("toan", "23/10/1999", "ha noi", "03385238", "toan@gmail.com", "CN"));
        list.add(new Hocvien("quan", "11/07/2003", "nam dinh", "09821238", "quan@gmail.com", "KT"));
        list.add(new Hocvien("cong", "10/10/1998", "hai phong", "08252238", "cong@gmail.com", "NN"));
    }

    public void add(Hocvien hocvien) {
        list.add(hocvien);
    }

    public void edit(Hocvien hocvien, int index) {
        list.set(index, hocvien);
    }

    public void delete(int index) {
        list.remove(index);
    }

    public List<Hocvien> find(String name) {
        ArrayList<Hocvien> hocviens = new ArrayList<>();
        for (Hocvien h : list) {
            if (h.getName().contains(name)) {
               hocviens.add(h);
            }
        }
        return hocviens;
    }
}
