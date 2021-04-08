package com.hclfsd.team10jan.capstone.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hclfsd.team10jan.capstone.entities.Music;
import com.hclfsd.team10jan.capstone.repositories.MusicRepository;

@Service
public class MusicService {

    @Autowired
    private MusicRepository musicRepository;

    public Iterable<Music> getAllMusic(){
        return musicRepository.findAll();
    }


    public Iterable<Music> searchKeywordMusic(String keyword) {
        //TODO: this needs to be made much more robust.
        List<Music> returnList = new ArrayList<Music>();

        //TODO: we would want to search all attributes of music for the keyword, not just name.

        for (Music m : musicRepository.findAll()) {
            if (m.getName().contains(keyword)) {
                returnList.add(m);
            }
        }
        return returnList;
    }
    public Optional<Music> getMusicById(Integer id)  {
        Optional<Music> foundMusic = musicRepository.findById(id);

        return (foundMusic);
    }

    public Music addMusic(Music Music) {
        return musicRepository.save(Music);
    }

    public void deleteMusic(Music Music) {
    	musicRepository.delete(Music);
    }


}