package com.example.ass.controller.admin;

import com.example.ass.model.MayTinh;
import com.example.ass.reqest.FilterMT;
import com.example.ass.reqest.SearchMayTinh;
import com.example.ass.service.IMayTinhService;
import com.example.ass.service.Upload;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;
import org.apache.commons.beanutils.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.math.BigDecimal;
import java.util.UUID;

@Controller
@RequestMapping("/admin/may-tinh/")
public class MayTinhController {
    @Autowired
    private IMayTinhService service;

    @Autowired
    private Upload upload;
    @Autowired
    HttpServletRequest request;

    @Autowired
    HttpSession session;

    private Integer idUpdate = null;

    @ModelAttribute("searchMayTinh")
    public SearchMayTinh searchMayTinh() {
        return new SearchMayTinh();
    }

//    @ModelAttribute("mayTinh")
//    public MayTinh mayTinh() {
//        return new MayTinh();
//    }

    @ModelAttribute("filterMT")
    public FilterMT filter() {
        return new FilterMT();
    }


    @GetMapping("list-mt")
    public String hienThi(Model model, @RequestParam(value = "page", defaultValue = "0") Integer pageNo) {
        Page<MayTinh> mayTinhPage = service.phanTrang(pageNo, 3);
        session.setAttribute("mayTinhPage", mayTinhPage);
        session.setAttribute("listMT", mayTinhPage.getContent());
        model.addAttribute("filterMT", new FilterMT());
        model.addAttribute("check", 0);
//        model.addAttribute("listMT", service.getAllMT());
        return "/admin/qlSanPham";
    }

    @GetMapping("detail-{id}")
    public String detail(Model model, @PathVariable("id") Integer id) {
        model.addAttribute("checkSave", true);

        model.addAttribute("mt", service.getOne(id).orElse(null));
        return "/admin/qlSanPham";
    }

    @GetMapping("delete-{id}")
    public String remove(@PathVariable("id") Integer id) {
        MayTinh mayTinh = service.getOne(id).orElse(null);
        upload.delete(mayTinh.getUrl(), "/resources/image/");
        service.detele(id);
        return "redirect:/admin/may-tinh/list-mt";
    }


    @PostMapping("add")
    public String add(@RequestParam("url") MultipartFile multipartFile,
                      @RequestParam("ten") String ten, @RequestParam("ram") String ram,
                      @RequestParam("mauSac") String mauSac, @RequestParam("cpu") String cpu,
                      @RequestParam("moTa") String moTa, @RequestParam("giaBan") String giaBan,
                      @RequestParam("sl") String sl,
                      Model model, RedirectAttributes ra) {
        MayTinh mayTinh = new MayTinh();
//        Double giaBanBD = Double.valueOf(giaBan);
//        Integer slBD = Integer.valueOf(sl);

        String randomString = UUID.randomUUID().toString();

        try {
            if (multipartFile.getOriginalFilename().isEmpty()) {
                mayTinh.setUrl("defaulImg.png");
            } else {
                mayTinh.setUrl(randomString + multipartFile.getOriginalFilename());
            }
//            BeanUtils.populate(mayTinh, request.getParameterMap());
//            System.out.println(mayTinh);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (ten.trim().length() == 0) {
            model.addAttribute("er1", "Không được để trông !");
            return "/admin/qlSanPham";
        } else {
            if (giaBan.trim().length() == 0) {
                model.addAttribute("er3", "Không được để trông !");
                return "/admin/qlSanPham";
            } else {
                if (new BigDecimal(giaBan).compareTo(BigDecimal.valueOf(-1)) < 0) {
                    model.addAttribute("er3", "Phải lớn hơn 0 !");
                    return "/admin/qlSanPham";
                } else {
                    if (sl.trim().length() == 0) {
                        model.addAttribute("er4", "Không được để trông !");
                        return "/admin/qlSanPham";
                    } else {
                        if (Integer.valueOf(sl) < 0) {
                            model.addAttribute("er4", "Phải lớn hơn 0 !");
                            return "/admin/qlSanPham";
                        } else {
                            if (moTa.trim().length() == 0) {
                                model.addAttribute("er2", "Không được để trông !");
                                return "/admin/qlSanPham";
                            } else {
                                mayTinh.setTen(ten);
                                mayTinh.setRam(ram);
                                mayTinh.setMauSac(mauSac);
                                mayTinh.setCpu(cpu);
                                mayTinh.setMoTa(moTa);
                                mayTinh.setSl(Integer.valueOf(sl));
                                mayTinh.setGiaBan(new BigDecimal(giaBan));
                                service.saveOrUpdate(mayTinh);
                                System.out.println("hi");
                                upload.save(randomString, multipartFile, "/resources/image/");
                                ra.addFlashAttribute("isADD", true);
                                return "redirect:/admin/may-tinh/list-mt";

                            }
                        }
                    }
                }

            }
        }


    }

    @GetMapping("view-update-{id}")
    public String viewUpdate(Model model, @PathVariable("id") Integer id) {
        idUpdate = id;

        model.addAttribute("mt", service.getOne(id).orElse(null));
        return "/admin/updateSP";
    }

    @PostMapping("update")
    public String update(@RequestParam("url") MultipartFile multipartFile,
                         @RequestParam("ten") String ten, @RequestParam("ram") String ram,
                         @RequestParam("mauSac") String mauSac, @RequestParam("cpu") String cpu,
                         @RequestParam("moTa") String moTa, @RequestParam("giaBan") String giaBan,
                         @RequestParam("sl") String sl, Model model, RedirectAttributes raa
    ) {
        MayTinh mayTinh1 = service.getOne(idUpdate).orElse(null);
        String randomString = UUID.randomUUID().toString();
        MayTinh mayTinh = service.getOne(idUpdate).orElse(null);
//        String hinhAnh = mayTinh.getUrl();
        try {
            if (multipartFile.getOriginalFilename().isEmpty()) {
//                mayTinh.setUrl("defaulImg.png");
                mayTinh.setUrl(mayTinh1.getUrl());
            } else {
                mayTinh.setUrl(randomString + multipartFile.getOriginalFilename());
            }
            BeanUtils.populate(mayTinh, request.getParameterMap());
            System.out.println(mayTinh);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (ten.trim().length() == 0) {
            model.addAttribute("er1", "Không được để trông !");
            model.addAttribute("mt", service.getOne(idUpdate).orElse(null));
            return "/admin/updateSP";
        } else {
            if (giaBan.trim().length() == 0) {
                model.addAttribute("er3", "Không được để trông !");
                model.addAttribute("mt", service.getOne(idUpdate).orElse(null));
                return "/admin/updateSP";
            } else {
                if (new BigDecimal(giaBan).compareTo(BigDecimal.valueOf(-1)) < 0) {
                    model.addAttribute("er3", "Phải lớn hơn 0 !");
                    model.addAttribute("mt", service.getOne(idUpdate).orElse(null));
                    return "/admin/updateSP";
                } else {
                    if (sl.trim().length() == 0) {
                        model.addAttribute("er4", "Không được để trông !");
                        model.addAttribute("mt", service.getOne(idUpdate).orElse(null));
                        return "/admin/updateSPP";
                    } else {
                        if (Integer.valueOf(sl) < 0) {
                            model.addAttribute("er4", "Phải lớn hơn 0 !");
                            model.addAttribute("mt", service.getOne(idUpdate).orElse(null));
                            return "/admin/updateSP";
                        } else {
                            if (moTa.trim().length() == 0) {
                                model.addAttribute("er2", "Không được để trông !");
                                model.addAttribute("mt", service.getOne(idUpdate).orElse(null));
                                return "/admin/updateSP";
                            } else {
                                mayTinh.setTen(ten);
                                mayTinh.setRam(ram);
                                mayTinh.setMauSac(mauSac);
                                mayTinh.setCpu(cpu);
                                mayTinh.setMoTa(moTa);
//                                mayTinh.setUrl( service.getOne(idUpdate).get().getUrl());
                                mayTinh.setSl(Integer.valueOf(sl));
                                mayTinh.setGiaBan(new BigDecimal(giaBan));
                                service.saveOrUpdate(mayTinh);

//                                if (multipartFile.getOriginalFilename().isEmpty()) {
//                                    mayTinh.setUrl(mayTinh1.getUrl());
//                                } else {
//                                    mayTinh.setUrl(randomString + multipartFile.getOriginalFilename());
//                                }
                                upload.save(randomString, multipartFile, "/resources/image/");
                                raa.addFlashAttribute("isUpdate", true);
                                return "redirect:/admin/may-tinh/list-mt";
                            }
                        }
                    }

                }
            }
        }


    }

    @GetMapping("search")
    public String search(Model model, @ModelAttribute("searchMayTinh") SearchMayTinh mayTinh,
                         @RequestParam(defaultValue = "0", name = "page") Integer page) {
        model.addAttribute("check", 1);
        model.addAttribute("listMT", service.search(mayTinh, page, 3).getContent());
        session.setAttribute("mayTinhPage", service.search(mayTinh, page, 3));
//        request.getAttribute("mayTinhPage");
        return "/qlSanPham";
    }

    @GetMapping("filter")
    public String filter(Model model, @ModelAttribute("filterMT") FilterMT filter,
                         @RequestParam(defaultValue = "0", name = "page") Integer page) {
        model.addAttribute("check", 2);
        model.addAttribute("listMT", service.filter(filter, page, 3).getContent());
        session.setAttribute("mayTinhPage", service.filter(filter, page, 3));
        System.out.println(filter.getGiaBan());
        return "/qlSanPham";
    }

}
