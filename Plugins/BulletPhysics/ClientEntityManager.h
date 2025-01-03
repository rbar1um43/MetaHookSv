#pragma once

#include <interface.h>
#include <metahook.h>
#include <r_efx.h>
#include <cl_entity.h>
#include <com_model.h>

class CPlayerDeathState
{
public:
	bool bIsDying{};
	float flClientTime{};
	float flAnimTime{};
	int iSequence{};
	int iBody{};
	int iModelIndex{};
	char szModelName[64]{ 0 };
	vec3_t vecOrigin{};
	vec3_t vecAngles{};
};

class IClientEntityManager : public IBaseInterface
{
public:
	virtual bool IsTempEntityPresent(TEMPENTITY** ppTempEntFree, TEMPENTITY** ppTempEntActive, TEMPENTITY* tent) = 0;
	virtual bool IsEntityPresent(cl_entity_t* ent) = 0;
	virtual bool IsEntityDeadPlayer(cl_entity_t* ent) = 0;
	virtual bool IsEntityClientCorpse(cl_entity_t* ent) = 0;
	virtual bool IsEntityWater(cl_entity_t* ent) = 0;
	virtual bool IsEntityPlayer(cl_entity_t* ent) = 0;
	virtual bool IsEntityGargantua(cl_entity_t* ent) = 0;
	virtual bool IsEntityBarnacle(cl_entity_t* ent) = 0;
	virtual bool IsEntityIndexTempEntity(int entindex) = 0;
	virtual bool IsEntityIndexNetworkEntity(int entindex) = 0;
	virtual bool IsEntityTempEntity(cl_entity_t* ent) = 0;
	virtual bool IsEntityNetworkEntity(cl_entity_t* ent) = 0;

	virtual void NewMap(void) = 0;

	virtual cl_entity_t* GetEntityByIndex(int entindex) = 0;

	virtual int GetEntityIndexFromTempEntity(cl_entity_t* ent) = 0;
	virtual int GetEntityIndexFromNetworkEntity(cl_entity_t* ent) = 0;
	virtual int GetEntityIndex(cl_entity_t* ent) = 0;

	virtual float GetEntityModelScaling(cl_entity_t* ent) = 0;
	virtual float GetEntityModelScaling(cl_entity_t* ent, model_t *mod) = 0;

	virtual void ClearPlayerDeathState(int entindex) = 0;
	virtual void ClearAllPlayerDeathState() = 0;

	virtual void SetPlayerDeathState(int entindex, entity_state_t* pplayer, model_t* model) = 0;
	virtual int FindDyingPlayer(const char* modelname, vec3_t origin, vec3_t angles, int sequence, int body) = 0;

	virtual void SetEntityEmitted(int entindex) = 0;
	virtual void SetEntityEmitted(cl_entity_t* ent) = 0;
	virtual bool IsEntityEmitted(int entindex) = 0;
	virtual bool IsEntityEmitted(cl_entity_t* ent) = 0;
	virtual void ClearEntityEmitStates() = 0;

	virtual bool IsEntityInVisibleList(cl_entity_t* ent) = 0;

	//The final render model goes here
	virtual void DispatchEntityModel(cl_entity_t* ent, model_t* mod) = 0;

	virtual void SetInspectedEntityIndex(int entindex) = 0;
	virtual int GetInspectEntityIndex() = 0;
	virtual int GetInspectEntityModelIndex() = 0;
};

IClientEntityManager *ClientEntityManager();