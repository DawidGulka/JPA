package com.capgemini.wsb.service.impl;

import com.capgemini.wsb.dto.PatientTO;
import com.capgemini.wsb.mapper.PatientMapper;
import com.capgemini.wsb.persistence.dao.PatientRepository;
import com.capgemini.wsb.persistence.entity.PatientEntity;
import com.capgemini.wsb.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class PatientServiceImpl implements PatientService {

    private final PatientRepository patientRepository;

    @Autowired
    public PatientServiceImpl(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }

    @Override
    public PatientTO findById(Long id) {
        PatientEntity entity = patientRepository.findById(id).orElse(null);
        return PatientMapper.mapToTO(entity);
    }

    @Override
    public PatientTO save(PatientTO patientTO) {
        PatientEntity entity = PatientMapper.mapToEntity(patientTO);
        PatientEntity savedEntity = patientRepository.save(entity);
        return PatientMapper.mapToTO(savedEntity);
    }

    @Override
    public void delete(Long id) {
        patientRepository.deleteById(id);
    }
}