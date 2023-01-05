// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct LaunchFind: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    apoapsis_km: GraphQLNullable<Double> = nil,
    block: GraphQLNullable<Int> = nil,
    cap_serial: GraphQLNullable<String> = nil,
    capsule_reuse: GraphQLNullable<String> = nil,
    core_flight: GraphQLNullable<Int> = nil,
    core_reuse: GraphQLNullable<String> = nil,
    core_serial: GraphQLNullable<String> = nil,
    customer: GraphQLNullable<String> = nil,
    eccentricity: GraphQLNullable<Double> = nil,
    end: GraphQLNullable<Date> = nil,
    epoch: GraphQLNullable<Date> = nil,
    fairings_recovered: GraphQLNullable<String> = nil,
    fairings_recovery_attempt: GraphQLNullable<String> = nil,
    fairings_reuse: GraphQLNullable<String> = nil,
    fairings_reused: GraphQLNullable<String> = nil,
    fairings_ship: GraphQLNullable<String> = nil,
    gridfins: GraphQLNullable<String> = nil,
    id: GraphQLNullable<ID> = nil,
    inclination_deg: GraphQLNullable<Double> = nil,
    land_success: GraphQLNullable<String> = nil,
    landing_intent: GraphQLNullable<String> = nil,
    landing_type: GraphQLNullable<String> = nil,
    landing_vehicle: GraphQLNullable<String> = nil,
    launch_date_local: GraphQLNullable<Date> = nil,
    launch_date_utc: GraphQLNullable<Date> = nil,
    launch_success: GraphQLNullable<String> = nil,
    launch_year: GraphQLNullable<String> = nil,
    legs: GraphQLNullable<String> = nil,
    lifespan_years: GraphQLNullable<Double> = nil,
    longitude: GraphQLNullable<Double> = nil,
    manufacturer: GraphQLNullable<String> = nil,
    mean_motion: GraphQLNullable<Double> = nil,
    mission_id: GraphQLNullable<String> = nil,
    mission_name: GraphQLNullable<String> = nil,
    nationality: GraphQLNullable<String> = nil,
    norad_id: GraphQLNullable<Int> = nil,
    orbit: GraphQLNullable<String> = nil,
    payload_id: GraphQLNullable<String> = nil,
    payload_type: GraphQLNullable<String> = nil,
    periapsis_km: GraphQLNullable<Double> = nil,
    period_min: GraphQLNullable<Double> = nil,
    raan: GraphQLNullable<Double> = nil,
    reference_system: GraphQLNullable<String> = nil,
    regime: GraphQLNullable<String> = nil,
    reused: GraphQLNullable<String> = nil,
    rocket_id: GraphQLNullable<String> = nil,
    rocket_name: GraphQLNullable<String> = nil,
    rocket_type: GraphQLNullable<String> = nil,
    second_stage_block: GraphQLNullable<String> = nil,
    semi_major_axis_km: GraphQLNullable<Double> = nil,
    ship: GraphQLNullable<String> = nil,
    side_core1_reuse: GraphQLNullable<String> = nil,
    side_core2_reuse: GraphQLNullable<String> = nil,
    site_id: GraphQLNullable<String> = nil,
    site_name_long: GraphQLNullable<String> = nil,
    site_name: GraphQLNullable<String> = nil,
    start: GraphQLNullable<Date> = nil,
    tbd: GraphQLNullable<String> = nil,
    tentative_max_precision: GraphQLNullable<String> = nil,
    tentative: GraphQLNullable<String> = nil
  ) {
    __data = InputDict([
      "apoapsis_km": apoapsis_km,
      "block": block,
      "cap_serial": cap_serial,
      "capsule_reuse": capsule_reuse,
      "core_flight": core_flight,
      "core_reuse": core_reuse,
      "core_serial": core_serial,
      "customer": customer,
      "eccentricity": eccentricity,
      "end": end,
      "epoch": epoch,
      "fairings_recovered": fairings_recovered,
      "fairings_recovery_attempt": fairings_recovery_attempt,
      "fairings_reuse": fairings_reuse,
      "fairings_reused": fairings_reused,
      "fairings_ship": fairings_ship,
      "gridfins": gridfins,
      "id": id,
      "inclination_deg": inclination_deg,
      "land_success": land_success,
      "landing_intent": landing_intent,
      "landing_type": landing_type,
      "landing_vehicle": landing_vehicle,
      "launch_date_local": launch_date_local,
      "launch_date_utc": launch_date_utc,
      "launch_success": launch_success,
      "launch_year": launch_year,
      "legs": legs,
      "lifespan_years": lifespan_years,
      "longitude": longitude,
      "manufacturer": manufacturer,
      "mean_motion": mean_motion,
      "mission_id": mission_id,
      "mission_name": mission_name,
      "nationality": nationality,
      "norad_id": norad_id,
      "orbit": orbit,
      "payload_id": payload_id,
      "payload_type": payload_type,
      "periapsis_km": periapsis_km,
      "period_min": period_min,
      "raan": raan,
      "reference_system": reference_system,
      "regime": regime,
      "reused": reused,
      "rocket_id": rocket_id,
      "rocket_name": rocket_name,
      "rocket_type": rocket_type,
      "second_stage_block": second_stage_block,
      "semi_major_axis_km": semi_major_axis_km,
      "ship": ship,
      "side_core1_reuse": side_core1_reuse,
      "side_core2_reuse": side_core2_reuse,
      "site_id": site_id,
      "site_name_long": site_name_long,
      "site_name": site_name,
      "start": start,
      "tbd": tbd,
      "tentative_max_precision": tentative_max_precision,
      "tentative": tentative
    ])
  }

  public var apoapsis_km: GraphQLNullable<Double> {
    get { __data["apoapsis_km"] }
    set { __data["apoapsis_km"] = newValue }
  }

  public var block: GraphQLNullable<Int> {
    get { __data["block"] }
    set { __data["block"] = newValue }
  }

  public var cap_serial: GraphQLNullable<String> {
    get { __data["cap_serial"] }
    set { __data["cap_serial"] = newValue }
  }

  public var capsule_reuse: GraphQLNullable<String> {
    get { __data["capsule_reuse"] }
    set { __data["capsule_reuse"] = newValue }
  }

  public var core_flight: GraphQLNullable<Int> {
    get { __data["core_flight"] }
    set { __data["core_flight"] = newValue }
  }

  public var core_reuse: GraphQLNullable<String> {
    get { __data["core_reuse"] }
    set { __data["core_reuse"] = newValue }
  }

  public var core_serial: GraphQLNullable<String> {
    get { __data["core_serial"] }
    set { __data["core_serial"] = newValue }
  }

  public var customer: GraphQLNullable<String> {
    get { __data["customer"] }
    set { __data["customer"] = newValue }
  }

  public var eccentricity: GraphQLNullable<Double> {
    get { __data["eccentricity"] }
    set { __data["eccentricity"] = newValue }
  }

  public var end: GraphQLNullable<Date> {
    get { __data["end"] }
    set { __data["end"] = newValue }
  }

  public var epoch: GraphQLNullable<Date> {
    get { __data["epoch"] }
    set { __data["epoch"] = newValue }
  }

  public var fairings_recovered: GraphQLNullable<String> {
    get { __data["fairings_recovered"] }
    set { __data["fairings_recovered"] = newValue }
  }

  public var fairings_recovery_attempt: GraphQLNullable<String> {
    get { __data["fairings_recovery_attempt"] }
    set { __data["fairings_recovery_attempt"] = newValue }
  }

  public var fairings_reuse: GraphQLNullable<String> {
    get { __data["fairings_reuse"] }
    set { __data["fairings_reuse"] = newValue }
  }

  public var fairings_reused: GraphQLNullable<String> {
    get { __data["fairings_reused"] }
    set { __data["fairings_reused"] = newValue }
  }

  public var fairings_ship: GraphQLNullable<String> {
    get { __data["fairings_ship"] }
    set { __data["fairings_ship"] = newValue }
  }

  public var gridfins: GraphQLNullable<String> {
    get { __data["gridfins"] }
    set { __data["gridfins"] = newValue }
  }

  public var id: GraphQLNullable<ID> {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }

  public var inclination_deg: GraphQLNullable<Double> {
    get { __data["inclination_deg"] }
    set { __data["inclination_deg"] = newValue }
  }

  public var land_success: GraphQLNullable<String> {
    get { __data["land_success"] }
    set { __data["land_success"] = newValue }
  }

  public var landing_intent: GraphQLNullable<String> {
    get { __data["landing_intent"] }
    set { __data["landing_intent"] = newValue }
  }

  public var landing_type: GraphQLNullable<String> {
    get { __data["landing_type"] }
    set { __data["landing_type"] = newValue }
  }

  public var landing_vehicle: GraphQLNullable<String> {
    get { __data["landing_vehicle"] }
    set { __data["landing_vehicle"] = newValue }
  }

  public var launch_date_local: GraphQLNullable<Date> {
    get { __data["launch_date_local"] }
    set { __data["launch_date_local"] = newValue }
  }

  public var launch_date_utc: GraphQLNullable<Date> {
    get { __data["launch_date_utc"] }
    set { __data["launch_date_utc"] = newValue }
  }

  public var launch_success: GraphQLNullable<String> {
    get { __data["launch_success"] }
    set { __data["launch_success"] = newValue }
  }

  public var launch_year: GraphQLNullable<String> {
    get { __data["launch_year"] }
    set { __data["launch_year"] = newValue }
  }

  public var legs: GraphQLNullable<String> {
    get { __data["legs"] }
    set { __data["legs"] = newValue }
  }

  public var lifespan_years: GraphQLNullable<Double> {
    get { __data["lifespan_years"] }
    set { __data["lifespan_years"] = newValue }
  }

  public var longitude: GraphQLNullable<Double> {
    get { __data["longitude"] }
    set { __data["longitude"] = newValue }
  }

  public var manufacturer: GraphQLNullable<String> {
    get { __data["manufacturer"] }
    set { __data["manufacturer"] = newValue }
  }

  public var mean_motion: GraphQLNullable<Double> {
    get { __data["mean_motion"] }
    set { __data["mean_motion"] = newValue }
  }

  public var mission_id: GraphQLNullable<String> {
    get { __data["mission_id"] }
    set { __data["mission_id"] = newValue }
  }

  public var mission_name: GraphQLNullable<String> {
    get { __data["mission_name"] }
    set { __data["mission_name"] = newValue }
  }

  public var nationality: GraphQLNullable<String> {
    get { __data["nationality"] }
    set { __data["nationality"] = newValue }
  }

  public var norad_id: GraphQLNullable<Int> {
    get { __data["norad_id"] }
    set { __data["norad_id"] = newValue }
  }

  public var orbit: GraphQLNullable<String> {
    get { __data["orbit"] }
    set { __data["orbit"] = newValue }
  }

  public var payload_id: GraphQLNullable<String> {
    get { __data["payload_id"] }
    set { __data["payload_id"] = newValue }
  }

  public var payload_type: GraphQLNullable<String> {
    get { __data["payload_type"] }
    set { __data["payload_type"] = newValue }
  }

  public var periapsis_km: GraphQLNullable<Double> {
    get { __data["periapsis_km"] }
    set { __data["periapsis_km"] = newValue }
  }

  public var period_min: GraphQLNullable<Double> {
    get { __data["period_min"] }
    set { __data["period_min"] = newValue }
  }

  public var raan: GraphQLNullable<Double> {
    get { __data["raan"] }
    set { __data["raan"] = newValue }
  }

  public var reference_system: GraphQLNullable<String> {
    get { __data["reference_system"] }
    set { __data["reference_system"] = newValue }
  }

  public var regime: GraphQLNullable<String> {
    get { __data["regime"] }
    set { __data["regime"] = newValue }
  }

  public var reused: GraphQLNullable<String> {
    get { __data["reused"] }
    set { __data["reused"] = newValue }
  }

  public var rocket_id: GraphQLNullable<String> {
    get { __data["rocket_id"] }
    set { __data["rocket_id"] = newValue }
  }

  public var rocket_name: GraphQLNullable<String> {
    get { __data["rocket_name"] }
    set { __data["rocket_name"] = newValue }
  }

  public var rocket_type: GraphQLNullable<String> {
    get { __data["rocket_type"] }
    set { __data["rocket_type"] = newValue }
  }

  public var second_stage_block: GraphQLNullable<String> {
    get { __data["second_stage_block"] }
    set { __data["second_stage_block"] = newValue }
  }

  public var semi_major_axis_km: GraphQLNullable<Double> {
    get { __data["semi_major_axis_km"] }
    set { __data["semi_major_axis_km"] = newValue }
  }

  public var ship: GraphQLNullable<String> {
    get { __data["ship"] }
    set { __data["ship"] = newValue }
  }

  public var side_core1_reuse: GraphQLNullable<String> {
    get { __data["side_core1_reuse"] }
    set { __data["side_core1_reuse"] = newValue }
  }

  public var side_core2_reuse: GraphQLNullable<String> {
    get { __data["side_core2_reuse"] }
    set { __data["side_core2_reuse"] = newValue }
  }

  public var site_id: GraphQLNullable<String> {
    get { __data["site_id"] }
    set { __data["site_id"] = newValue }
  }

  public var site_name_long: GraphQLNullable<String> {
    get { __data["site_name_long"] }
    set { __data["site_name_long"] = newValue }
  }

  public var site_name: GraphQLNullable<String> {
    get { __data["site_name"] }
    set { __data["site_name"] = newValue }
  }

  public var start: GraphQLNullable<Date> {
    get { __data["start"] }
    set { __data["start"] = newValue }
  }

  public var tbd: GraphQLNullable<String> {
    get { __data["tbd"] }
    set { __data["tbd"] = newValue }
  }

  public var tentative_max_precision: GraphQLNullable<String> {
    get { __data["tentative_max_precision"] }
    set { __data["tentative_max_precision"] = newValue }
  }

  public var tentative: GraphQLNullable<String> {
    get { __data["tentative"] }
    set { __data["tentative"] = newValue }
  }
}
