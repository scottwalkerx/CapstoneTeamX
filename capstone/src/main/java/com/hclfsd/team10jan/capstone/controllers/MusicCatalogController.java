package com.hclfsd.team10jan.capstone.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hclfsd.team10jan.capstone.entities.Music;
import com.hclfsd.team10jan.capstone.services.MusicService;

@Controller
public class MusicCatalogController {


    @Autowired
    MusicService musicService;


    @RequestMapping(value = "/music_catalog", method = RequestMethod.GET)
    public String greeting(Model model) {

        Iterable<Music> musics = musicService.getAllMusic();

        model.addAttribute("music", musics);
        return "music_catalog";
    }
}