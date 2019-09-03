/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.project_final.controller;

import com.mycompany.project_final.entities.AccountEntity;
import com.mycompany.project_final.entities.AccountRoleEntity;
import com.mycompany.project_final.entities.ImageEntity;
import com.mycompany.project_final.entities.RoomCategoryEntity;
import com.mycompany.project_final.entities.RoomEntity;
import com.mycompany.project_final.entities.ServiceEntity;
import com.mycompany.project_final.enums.Role;
import com.mycompany.project_final.service.AccountService;
import com.mycompany.project_final.service.CategoryService;
import com.mycompany.project_final.service.ImageService;
import com.mycompany.project_final.service.RoomService;
import com.mycompany.project_final.service.ServiceEntityService;
import java.io.File;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 *
 * @author AnhLe
 */
@Controller
public class HomeController {

    @Autowired
    AccountService accountService;
    @Autowired
    ServiceEntityService serviceEntityService;
    @Autowired
    ImageService imageService;
    @Autowired
    CategoryService categoryService;
    @Autowired
    RoomService roomService;

    @RequestMapping(value = {"/", "/home"})
    public String home(Model model) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

        if (principal instanceof AccountEntity) {
            String emailAcc = ((AccountEntity) principal).getFullname();
            List<AccountRoleEntity> accountRoles = ((AccountEntity) principal).getAccountRoles();
            model.addAttribute("message", emailAcc);
//             int id = ((AccountEntity) principal).getId();
            if (accountRoles != null && accountRoles.size() > 0) {
                for (AccountRoleEntity accountRole : accountRoles) {
                    if (accountRole.getRoles().equals(Role.ROLE_ADMIN)) {
                        return "redirect:/admin/home";
                    } else if (accountRole.getRoles().equals(Role.ROLE_USER)) {
                        return "user/user_home";
                    } else if (accountRole.getRoles().equals(Role.ROLE_MANAGER)) {

                        return "redirect:/manager/manager-service";
                    } else {

                        return "redirect:/reception/home";
                    }
                }
            }

        }

        return "home";
    }

    @RequestMapping("/login")
    public String loginForm(Model model,
            @RequestParam(value = "isError",
                    required = false) boolean isError) {
        if (isError) {
            model.addAttribute("message", "Login Fail.");
        }
        return "login";
    }

}
